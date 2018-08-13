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
      specVersion = "1.6";
      identifier = {
        name = "hsb2hs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Preprocesses a file, adding blobs from files as string literals.";
      description = "hsb2hs is a preprocessor that allows you to include the contents of\nfiles as string literals in your Haskell programs and libraries.\nIt is an alternative to file-embed for those who do not want to rely\non Template Haskell.  See @README.markdown@ for instructions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsb2hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.preprocessor-tools)
          ];
        };
      };
    };
  }