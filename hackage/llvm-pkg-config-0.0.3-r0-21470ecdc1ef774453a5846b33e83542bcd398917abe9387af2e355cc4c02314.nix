{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-pkg-config"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "llvm@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Generate Pkg-Config configuration file for LLVM";
      description = "Building the @llvm-base@ package is fragile due to its configuration process.\nIt would be much simpler, if LLVM would support pkg-config\nsince this is nicely integrated in Cabal.\nHowever, LLVM developers do not seem to care much about it:\n<http://llvm.org/bugs/show_bug.cgi?id=9405>.\nIf we are lucky we get pkg-config support in Debian Linux.\nUntil this comes true, you can use this program.\nIt calls @llvm-config@ and writes its output to a PC file.\n\n> llvm-pkg-config\n\ncalls default @llvm-config@ and writes the generated file to standard output.\n\n> sudo llvm-pkg-config --install\n\ninstalls the PC file at a default location.\nThis should be the standard task to perform.\n\n> llvm-pkg-config --llvm-config=/custom/path/to/llvm-config\n\nif you have multiple versions of LLVM installed\nyou may choose an @llvm-config@ other than the default one.\n\nYou can check, whether your config file is found by @pkg-config@ using\n\n> pkg-config --modversion llvm\n\nIt should show the version number of LLVM you want to use.\n\nIf you install @llvm.pc@ in a non-standard location\nyou may need to extend the search path for @pkg-config@\n\n> export PKG_CONFIG_PATH=your-llvm-pc-path:$PKG_CONFIG_PATH\n\nThe package also includes the bash script @make-pkg-config.sh@\nthat should also generate the @llvm.pc@ file.\n\nFor Nix we ship a file named @llvm-pc.nix@.\nIt creates the @llvm.pc@ file and exposes it to importing Nix packages.\nYou can include it in your Nix expression like so:\n\n> callPackage ./llvm-pc.nix {llvmPackages=pkgs.llvmPackages_21;}";
      buildType = "Simple";
    };
    components = {
      exes = {
        "llvm-pkg-config" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }