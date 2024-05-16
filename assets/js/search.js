(function() {
    function fetchAndParseIndex() {
        return fetch('/search.json')
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            return lunr(function() {
            this.field('title');
            this.field('content');
            this.ref('url');
            
            data.forEach(function(doc) {
                this.add(doc);
            }, this);
            });
        });
    }

    function displayResults(results, store) {
        var resultsContainer = document.getElementById('results-container');
        resultsContainer.innerHTML = '';

        if (results.length) {
        results.forEach(function(result) {
            var item = store[result.ref];
            var li = document.createElement('li');
            var a = document.createElement('a');
            a.href = item.url;
            a.textContent = item.title;
            li.appendChild(a);
            resultsContainer.appendChild(li);
        });
        } else {
        resultsContainer.innerHTML = '<li>No results found</li>';
        }
    }

    document.addEventListener('DOMContentLoaded', function() {
        var store = {};
        var indexPromise = fetchAndParseIndex();

        fetch('/search.json')
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            data.forEach(function(doc) {
            store[doc.url] = doc;
            });
        });

        var searchInput = document.getElementById('search-input');
        searchInput.addEventListener('keyup', function() {
        var query = searchInput.value;
        indexPromise.then(function(index) {
            var results = index.search(query);
            displayResults(results, store);
        });
        });
    });
})();