{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "co-log-polysemy"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "Implementation of the [co-log](http://hackage.haskell.org/package/co-log-core)\nlogging based on the [polysemy](http://hackage.haskell.org/package/polysemy)\nextensible effects library.\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)\n\nFor the taggless final implementation of the @co-log@ ideas se the following package:\n\n* [co-log](http://hackage.haskell.org/package/co-log)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.co-log-core) (hsPkgs.polysemy) ];
        };
      exes = {
        "play-colog-poly" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.co-log-core)
            (hsPkgs.co-log-polysemy)
            (hsPkgs.polysemy)
            ];
          };
        };
      };
    }