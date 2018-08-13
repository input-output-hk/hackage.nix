{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      beta = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "darcs-fastconvert";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Import/export git fast-import streams to/from darcs.";
      description = "The darcs-fastconvert tool allows you to both import\ngit repositories into darcs (using git fast-export)\nand export darcs repositories into git (using git\nfast-import). You may also achieve some success with\n3rd-party fast-import/fast-export tools, like\nbzr-fastimport although this is not explicitly\nsupported or tested. Often, converting from X to git\nand then to darcs works better than direct X to darcs\nconversion using 3rd-party tools.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcs-fastconvert" = {
          depends  = [
            (hsPkgs.hashed-storage)
            (hsPkgs.cmdlib)
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.datetime)
            (hsPkgs.old-time)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
          ] ++ (if _flags.beta
            then [ (hsPkgs.darcs-beta) ]
            else [ (hsPkgs.darcs) ]);
        };
      };
    };
  }