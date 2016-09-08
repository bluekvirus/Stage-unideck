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
1. Clone the project
2. `npm install`
3. Install `inotifywait`(apt), `lessc`(npm) and `http-server`(npm) on your machine
4. Run `watchless.sh`
5. Serve through `http-server` and test in `index.html`

License
-------
Copyright 2016 Tim Lauv, Patrick Zhu. 
Under the [MIT](http://opensource.org/licenses/MIT) License.