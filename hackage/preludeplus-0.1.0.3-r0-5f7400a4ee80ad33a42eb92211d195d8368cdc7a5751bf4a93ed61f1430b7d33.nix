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
        name = "preludeplus";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Joshua Booth";
      maintainer = "joshua.n.booth@gmail.com";
      author = "Joshua Booth";
      homepage = "https://github.com/jnbooth/preludeplus#readme";
      url = "";
      synopsis = "Generalizes List functions and replaces partials with NonEmpty equivalents.";
      description = "Generalizes List functions to MonadPlus etc. and replaces partials and group(By) with NonEmpty equivalents.";
      buildType = "Simple";
    };
    components = {
      "preludeplus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }