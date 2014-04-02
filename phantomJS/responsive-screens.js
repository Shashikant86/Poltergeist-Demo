var page = new WebPage(),
    address, output, size, filename_parts, ext, filename, dirs;

var fs = require('fs');

var now = new Date();

var viewports = [
    { width: 1200, height: 800 },
    { width: 1024, height: 768 },
    { width: 768, height: 1024 },
    { width: 480, height: 640 },
    { width: 320, height: 480 }
]

if (phantom.args.length < 2 || phantom.args.length > 3) {
    console.log('Usage: responsive-screens.js URL png|pdf');
    phantom.exit();
} else {
    address = phantom.args[0];
    dir = url_to_dir(address);
    ext = phantom.args[1];
    page.viewportSize = viewports[0];
    output = dir + "/" + viewports[0].width + "." + ext;
    page.open(address, function (status) {
        if (status !== 'success') {
            console.log('Unable to load the address!');
        } else {
            window.setTimeout(function () {
                console.log('Saving '+output+'...');
                page.render(output);
                for (var i=1; i<viewports.length; i++) {
                    page.viewportSize = viewports[i];
                    output = dir + "/" + viewports[i].width + "." + ext;
                    console.log('Saving '+output+'...');
                    page.render(output);
                }
                phantom.exit();
            }, 200);
        }
    });
}

function url_to_dir( url ) {
    var dir;
    dir = url.replace('http://', '');
    if (dir.charAt(dir.length-1) == '/') dir = dir.substr(0, dir.length-2);
    fs.makeTree(dir);
    return dir;
}

