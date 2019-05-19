{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "ghc-lib-parser"; version = "0.20190402"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Digital Asset";
      author = "The GHC Team and Digital Asset";
      homepage = "https://github.com/digital-asset/ghc-lib";
      url = "";
      synopsis = "The GHC API, decoupled from GHC versions";
      description = "A package equivalent to the @ghc@ package, but which can be loaded on many compiler versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.pretty)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.hpc)
          ] ++ (if !system.isWindows
          then [ (hsPkgs.unix) ]
          else [ (hsPkgs.Win32) ]);
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      };
    }