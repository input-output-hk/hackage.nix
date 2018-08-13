{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "jack";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://open-projects.net/~shahn/index.php?seite=code";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit";
      buildType = "Custom";
    };
    components = {
      "jack" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.jack) ];
      };
      exes = {
        "amplify" = {
          depends  = [ (hsPkgs.base) ];
          libs = [ (pkgs.jack) ];
        };
      };
    };
  }