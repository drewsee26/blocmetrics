*/ Javascript snippet to capture client side events /*

var blocmetrics = {};
    blocmetrics.report = function(eventName){
        var event = {event: { event_name: eventName }};
        
        var request = new XMLHttpRequest();
        
        request.open("POST", "https://blocmetrics-drewsee26.c9users.io/api/events", true);
        
        request.setRequestHeader('Content-Type', 'application/json');
        
        request.send(JSON.stringify(event));
    };
