{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      jsffi = true;
      webkit = false;
    };
    package = {
      specVersion = "1.24";
      identifier = {
        name = "ghcjs-dom";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that supports both GHCJS and GHC";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and a Browser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
        ] ++ (if compiler.isGhcjs && true && flags.jsffi
          then [
            (hsPkgs.ghcjs-dom-jsffi)
          ]
          else if flags.webkit
            then [
              (hsPkgs.ghcjs-dom-webkit)
            ]
            else [
              (hsPkgs.ghcjs-dom-jsaddle)
            ]);
      };
    };
  }