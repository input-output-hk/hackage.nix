{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-injection = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "file-embed-poly";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexis Williams <sasinestro@gmail.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Alexis Williams <sasinestro@gmail.com>";
      homepage = "https://github.com/sasinestro/file-embed";
      url = "";
      synopsis = "Use Template Haskell to embed file contents directly.";
      description = "Use Template Haskell to read a file or all the files in a\ndirectory, and turn them into (path, IsString) pairs\nembedded in your haskell code.\nThis is a (hopefully temporary) fork of the original file-embed by Micheal Snoyman.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
          ] ++ pkgs.lib.optional (flags.test-injection) (hsPkgs.shelly);
        };
      };
    };
  }