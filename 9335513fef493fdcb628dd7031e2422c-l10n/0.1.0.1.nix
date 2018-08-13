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
      specVersion = "1.10";
      identifier = {
        name = "l10n";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/l10n#readme";
      url = "";
      synopsis = "Enables providing localization as typeclass instances in separate files.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "l10n" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }