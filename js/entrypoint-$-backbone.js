/**
 * Minimum main script with Backbone.js
 *
 * How-to
 * ------
 * 1. Put more routes into AppRouter;
 * 2. Put more interaction e listeners into MainView;
 *
 * @author Tim Lauv
 * @created 2016.12.18
 */
(function($, _, global){

    // Core engine rolling...
    $(function(){
        // Create and export router (so you can do app.navigate() later)
        global.app = new AppRouter();
        // Start # (hash) change watch (no {pushState: true} so we can keep # after)
        Backbone.history.start(/*{pushState: true}*/);
        // Create main view
        global.app.mainView = new MainView();
        // Always fit main view to view port
        $(global).resize(_.debounce(function(e){
            global.app.mainView.$el.css({
                width: global.innerWidth, //IE9+
                height: global.innerHeight, //IE9+
                overflowY: 'auto'
            });
        }, 250 /*in milliseconds*/));
    });

    // Define Global Router (listener of #change)
    var AppRouter = Backbone.Router.extend({

        routes: {
            "help": "help", // #help
            "search/:query": "search", // #search/kiwis
            "search/:query/p:page": "search" // #search/kiwis/p7
        },

        help: function() {
            console.log('#help');
        },

        search: function(query, page) {
            console.log('#search', query, page);
        }

    });

    // Define Main View (bind to <div id=application/>)
    var MainView = Backbone.View.extend({
        el: '#application',
        events: {

            // register interaction events here...

        },
    });

})(Zepto, _, window);
