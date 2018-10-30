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
      specVersion = "1.8";
      identifier = {
        name = "idiii";
        version = "0.1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bart.massey@gmail.com, christopher.t.wagner@gmail.com, alekhin.alexey@gmail.com";
      author = "Alexey Alekhin, Chris Wagner";
      homepage = "";
      url = "";
      synopsis = "ID3v2 (tagging standard for MP3 files) library";
      description = "ID3v2 (tagging standard for MP3 files) library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.polyparse)
          (hsPkgs.text)
          (hsPkgs.data-accessor)
          (hsPkgs.utf8-string)
          (hsPkgs.containers)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "read-idiii" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }