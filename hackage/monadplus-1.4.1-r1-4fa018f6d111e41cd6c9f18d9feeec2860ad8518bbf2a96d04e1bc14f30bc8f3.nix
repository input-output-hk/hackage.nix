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
        name = "monadplus";
        version = "1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Haskell98 partial maps and filters over MonadPlus.";
      description = "Filtering and folding over arbitrary `MonadPlus` instances.\nThis package generalizes many common stream operations such as\n`filter`, `catMaybes` etc.";
      buildType = "Simple";
    };
    components = {
      "monadplus" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }