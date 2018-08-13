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
      specVersion = "1.8";
      identifier = {
        name = "vado";
        version = "0.0.7";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "https://github.com/hamishmack/vado";
      url = "https://github.com/hamishmack/vado";
      synopsis = "Runs commands on remote machines using ssh";
      description = "Lets you quickly run ssh on a machine that you have an sshfs connection to.\nIt works out the username, host and the directory on the host based on the current directory and the output of 'mount'.";
      buildType = "Simple";
    };
    components = {
      "vado" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      exes = {
        "vado" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "vamount" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-vado" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }