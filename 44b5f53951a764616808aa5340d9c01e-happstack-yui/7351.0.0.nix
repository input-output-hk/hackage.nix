{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "happstack-yui";
          version = "7351.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dag.odenhall@gmail.com";
        author = "";
        homepage = "https://github.com/dag/happstack-yui";
        url = "";
        synopsis = "Utilities for using YUI3 with Happstack.";
        description = "Bundles YUI 3.5.1 and includes a \\\"combo handler\\\" for use in Happstack\nwhich concatenates YUI modules server-side to send in a single HTTP\nrequest.  The YUI bundle is embedded in the library with Template Haskell\nwhich means the files are served directly from memory, and also that you\ncan compile and deploy a single executable without having to worry about\ndeploying the YUI files as well.\n\nThe benefits of using this over the Yahoo! CDN is that you can work\noffline and that you can host YUI yourself without sacrificing the\nbenefits of \\\"combo loading\\\".\n\nThe versioning scheme of this package is that the first part is the\ntargeted Happstack series plus the bundled YUI version, such that 7351\nmeans \\\"Happstack 7, YUI 3.5.1\\\".  The second part is the major version\nof this package itself, as defined by the Package Versioning Policy.\n\nIn a future release, the plan is to add more utilities than just a\nbundled YUI, for example a combo handler for YUI modules written using\nJMacro, a bridge between HSX and YUI Node objects and tools for working\nwith the YUI CSS modules.\n\nFor an example application, see:\n<https://github.com/dag/happstack-yui/blob/master/demo/happstack-yui-demo.hs>";
        buildType = "Simple";
      };
      components = {
        "happstack-yui" = {
          depends  = [
            hsPkgs.base
            hsPkgs.boomerang
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.file-embed
            hsPkgs.happstack-jmacro
            hsPkgs.happstack-server
            hsPkgs.jmacro
            hsPkgs.pretty
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.web-routes
            hsPkgs.web-routes-boomerang
            hsPkgs.web-routes-happstack
          ];
        };
      };
    }