{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bindings-mpdecimal";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/bindings-mpdecimal";
      url = "";
      synopsis = "bindings to mpdecimal library";
      description = "mpdecimal provides correctly rounded\narbitrary precision decimal floating point arithmetic.\n\nPlease see\n\n<http://www.github.com/massysett/bindings-mpdecimal>";
      buildType = "Simple";
    };
    components = {
      "bindings-mpdecimal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
      };
    };
  }