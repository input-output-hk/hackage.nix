{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Hsed";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "virukav@gmail.com";
        author = "Vitaliy Rukavishnikov";
        homepage = "http://github.com/rukav/Hsed";
        url = "";
        synopsis = "Stream Editor in Haskell";
        description = "A version of sed editor in Haskell based on POSIX \"The Open Group Base\nSpecifications Issue 7\" IEEE Std 1003.1-2008.\n\nFor the library usage check Hsed.Sed module and for the program usage\ntake a look in the attached README file";
        buildType = "Simple";
      };
      components = {
        "Hsed" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Glob
            hsPkgs.cmdargs
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.data-accessor-transformers
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.regex-compat
            hsPkgs.regex-base
            hsPkgs.regex-posix
            hsPkgs.array
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.haskell98
          ];
        };
        exes = { "Hsed" = {}; };
      };
    }