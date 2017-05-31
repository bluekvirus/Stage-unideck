Stagejs-unideck
===============
Responsive minimum CSS base for Stage.js projects

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
