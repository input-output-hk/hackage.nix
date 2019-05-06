{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "co-log"; version = "0.2.0"; };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "The default implementation of logging based on [co-log-core](http://hackage.haskell.org/package/co-log-core).\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.co-log-core)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.typerep-map)
          ];
        };
      exes = {
        "play-colog" = {
          depends = [ (hsPkgs.base) (hsPkgs.co-log) (hsPkgs.typerep-map) ];
          };
        "readme" = {
          depends = [ (hsPkgs.base) (hsPkgs.co-log) (hsPkgs.text) ];
          build-tools = [ ((hsPkgs.buildPackages).markdown-unlit) ];
          };
        };
      };
    }