{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "jukebox"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "2009-2014 Nick Smallbone, Koen Claessen, Ann Lillieström";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "";
      url = "";
      synopsis = "A first-order reasoning toolbox";
      description = "Jukebox is a suite of tools for transforming problems in first-order logic.\nIt reads problems in TPTP (FOF and TFF) format.\n\nCurrently it can translate typed problems to untyped (by efficiently\nencoding types) and clausify problems (both typed and untyped).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.hashable)
          (hsPkgs.minisat)
          (hsPkgs.binary)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.containers)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      exes = {
        "jukebox" = {
          depends = [
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.hashable)
            (hsPkgs.minisat)
            (hsPkgs.binary)
            (hsPkgs.unordered-containers)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.jukebox)
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
            ];
          };
        };
      };
    }