{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "acid-state";
        version = "0.12.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup";
      homepage = "http://acid-state.seize.it/";
      url = "";
      synopsis = "Add ACID guarantees to any serializable Haskell data structure.";
      description = "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.safecopy)
          (hsPkgs.stm)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.template-haskell)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      benchmarks = {
        "loading-benchmark" = {
          depends  = [
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.acid-state)
          ];
        };
      };
    };
  }