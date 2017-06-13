Stagejs-unideck
===============
Responsive minimum CSS base for Stage.js projects


Install
-------
```
bower install --save stage-unideck
```


Usage
-----
A. In your `index.html`, if you need only the CSS classes.
```html
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/stage-unideck.css">
```


B. Or, in your `main.less`, if you also want to use the **LESS** mixins.
```less
@import "stage-unideck/less/main.less";
```


Layouts
-------
Fluid
```html
<!-- Fluid -->
<div class="frame">
    <div class="deck padded vfill">
        <div class="unit-1 padded "><div class="view">.unit-1 .padded</div></div>
        <div class="unit-1 padded "><div class="view">.unit-1 .padded</div></div>
        <div class="unit-1 padded "><div class="view">.unit-1 .padded</div></div>
        <div class="unit-1 padded "><div class="view">.unit-1 .padded</div><div style="position: absolute;left: 0;bottom: 0;height: 2em;width: 2em;background: red"></div></div>
        <div class="unit-1 padded vfill"><div class="view">.unit-1 .padded .vfill</div></div>
        <div class="unit-1 padded vfill"><div class="view">.unit-1 .padded .vfill</div></div>
        <div class="unit-1 padded vfill"><div class="view">.unit-1 .padded .vfill</div></div>
        <div class="unit-1 padded vfill"><div class="view">.unit-1 .padded .vfill</div></div>
    </div>
</div>
```

Flex
```html
<!-- Flex -->
<div class="frame">
    <div class="flex vfill half">
        <div class="unit-3 view"></div>
        <div class="unit view"></div>
        <div class="unit-2 view"></div>
        <div class="unit view"></div>
    </div>
    <div class="flex horizontal vfill half">
        <div class="unit view"></div>
        <div class="unit-2 view"></div>
        <div class="unit-3 flex">
            <div class="unit view"></div>
            <div class="unit view"></div>
            <div class="unit view"></div>
        </div>
    </div>
</div>
```

Grid
```html
<!-- Grid -->
<div class="grid grid-default vfill border padded">
    <div class="grid-item-a padded dashed">A</div>
    <div class="grid-item-b padded dashed">B</div>
    <div class="grid-item-c padded dashed">C</div>
    <div class="grid-item-d padded dashed">D</div>
</div>
```
Note: you need to use `.grid()` and `.grid-unit()` mixins to define your own custom layout grid.


Mixins
------
- `.bg(@file)`
- `.font(@name, @file)`
- `.media-print/pc/phone/tablet(@rules)`
- `.grid(@rows, @cols)`
- `.grid-item(@row, @col)`


Classes
-------
- `.hidden-print/pc/phone/tablet`
- `.hidden` -layout, -screen-reader
- `.visuallyhidden` -layout
- `.invisible` -screen-reader
- `.clearfix`
- `.frame`
- `.deck`
- `.flex`
- `.unit-*`


Assets
------
You can use our `index.html` as starting point for your front-end project, with static goodies we collected from the **H5BP** project in `assets` folder.


Contribute
----------
1. Clone the project;
2. `bower install`;
3. Install `inotifywait/inotify-tools`(apt), `less`(npm), `http-server`(npm) and `forever`(npm) on your dev machine;
4. Run `start.sh [-p 9000]` then `watchless.sh`;
5. Test in `index.html`;
6. Stop server through `ctrl-c` then `stop.sh`;

License
-------
Copyright 2016 - 2017 Tim Lauv, Patrick Zhu. 
Under the [MIT](http://opensource.org/licenses/MIT) License.
