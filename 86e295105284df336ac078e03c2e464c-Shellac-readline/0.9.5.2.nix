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
      specVersion = "1.2";
      identifier = {
        name = "Shellac-readline";
        version = "0.9.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/shellac/home/";
      url = "";
      synopsis = "Readline backend module for Shellac";
      description = "This package provides a Shellac backend based on the GNU readline\nlibrary.  This backend features all the line editing capabilities\nprovided by readline, as well as command completion and command\nhistory features.";
      buildType = "Simple";
    };
    components = {
      "Shellac-readline" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.readline)
          (hsPkgs.Shellac)
        ];
      };
    };
  }