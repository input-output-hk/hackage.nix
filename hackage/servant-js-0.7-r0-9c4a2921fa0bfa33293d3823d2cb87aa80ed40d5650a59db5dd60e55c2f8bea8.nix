{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-js";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Automatically derive javascript functions to query servant webservices.";
      description = "Automatically derive javascript functions to query servant webservices.\n\nSupports deriving functions using vanilla javascript AJAX requests, Angulari, Axios or JQuery.\n\nYou can find an example <https://github.com/haskell-servant/servant/blob/master/servant-js/examples/counter.hs here>\nwhich serves the generated javascript to a webpage that allows you to trigger\nwebservice calls.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-js/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.charset)
          (hsPkgs.lens)
          (hsPkgs.servant-foreign)
          (hsPkgs.text)
        ];
      };
      exes = {
        "counter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-js)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.language-ecmascript)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-js)
            (hsPkgs.text)
          ];
        };
      };
    };
  }