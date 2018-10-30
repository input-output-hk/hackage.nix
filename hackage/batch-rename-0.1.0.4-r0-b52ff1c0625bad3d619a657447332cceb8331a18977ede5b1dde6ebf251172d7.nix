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
        name = "batch-rename";
        version = "0.1.0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "collger@gmail.com";
      author = "Joyer Huang";
      homepage = "https://github.com/uppet/batch_rename";
      url = "";
      synopsis = "Make linux or macos do things like \"rename *.mp3 *.mp4\" in Windows/MSDOS";
      description = "Do you remember the convenient command `rn' in MSDOS?\nWhen you want to change all your .mp3 files to .mp4.\nSimply type \\\"rn *.mp3 *.mp4.\\\".\nI really like this.\nBut in linux\\/Mac world, people keep asking how.(http:\\/\\/bit.ly\\/2cIskUu)\nSo maybe this little tool can help you a lot.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "batch_rename" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }