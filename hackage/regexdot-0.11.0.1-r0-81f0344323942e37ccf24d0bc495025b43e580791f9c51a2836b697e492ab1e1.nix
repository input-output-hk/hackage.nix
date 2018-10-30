{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      havedeepseq = true;
      llvm = false;
      threaded = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "regexdot";
        version = "0.11.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "regexdot <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A polymorphic, POSIX, extended regex-engine.";
      description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.toolshed)
        ] ++ (if flags.havedeepseq
          then [ (hsPkgs.deepseq) ]
          else [
            (hsPkgs.parallel)
          ])) ++ [ (hsPkgs.parallel) ];
      };
    };
  }