{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk3 = true; jsffi = true; webkit = false; jmacro = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsc"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "High level interface for webkit-javascriptcore";
      description = "This package provides an EDSL for calling JavaScript code using\nthe JavaScriptCore engine and low level Haskell bindings\nin the webkit-javascriptcore library <https://github.com/ghcjs/webkit-javascriptcore>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.template-haskell)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && true) (if flags.gtk3
          then [ (hsPkgs.webkitgtk3) (hsPkgs.webkitgtk3-javascriptcore) ]
          else [
            (hsPkgs.webkit)
            (hsPkgs.webkit-javascriptcore)
            ])) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs.jmacro);
        };
      tests = {
        "test-tool" = {
          depends = ([
            (hsPkgs.template-haskell)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hslogger)
            (hsPkgs.jsc)
            ] ++ (pkgs.lib).optionals (compiler.isGhc && true) ([
            (hsPkgs.glib)
            ] ++ (if flags.gtk3
            then [
              (hsPkgs.gtk3)
              (hsPkgs.webkitgtk3)
              (hsPkgs.webkitgtk3-javascriptcore)
              ]
            else [
              (hsPkgs.gtk)
              (hsPkgs.webkit)
              (hsPkgs.webkit-javascriptcore)
              ]))) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs.jmacro);
          };
        };
      };
    }