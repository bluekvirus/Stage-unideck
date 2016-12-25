Stagejs-unideck
===============
Responsive minimum CSS base for Stage.js projects

```html
    Container usage:

    <div class="deck">
        <!-- A total of 8 unit lengths available to users. -->
        <!-- It can also be nested. -->
        <div class="unit-1"></div>
        <div class="unit-2"></div>
        <div class="unit-3"></div>
        <div class="unit-4">
            <div class="deck">
                <div class="unit-6"></div>
            </div>
        </div>
        <div class="unit-5"></div>
        <div class="unit-6"></div>
        <div class="unit-7"></div>
        <div class="unit-8"></div>
    </div>
```

Contribute
----------
1. Clone the project;
2. `bower install`;
3. Install `inotifywait/inotify-tools`(apt), `lessc`(npm), `http-server`(npm) and `forever`(npm) on your dev machine;
4. Run `start.sh [-p 9000]` then `watchless.sh`;
5. Test in `index.html`;
6. Stop server through `ctrl-c` then `stop.sh`;

License
-------
Copyright 2016 - 2017 Tim Lauv, Patrick Zhu. 
Under the [MIT](http://opensource.org/licenses/MIT) License.
