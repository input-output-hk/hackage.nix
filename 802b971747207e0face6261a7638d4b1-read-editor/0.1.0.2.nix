{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "read-editor";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-read-editor";
      url = "";
      synopsis = "Opens a temporary file on the system's EDITOR and returns the resulting edits";
      description = "See <https://github.com/yamadapc/haskell-read-editor> for more information";
      buildType = "Simple";
    };
    components = {
      "read-editor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.process)
        ];
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (!(!_flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.read-editor)
          ];
        };
        "example-with" = {
          depends  = pkgs.lib.optionals (!(!_flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.read-editor)
          ];
        };
      };
    };
  }