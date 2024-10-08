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
      specVersion = "1.10";
      identifier = { name = "exomizer"; version = "1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2018 ALeX Kazik";
      maintainer = "alex@kazik.de";
      author = "ALeX Kazik";
      homepage = "https://github.com/alexkazik/exomizer#readme";
      url = "";
      synopsis = "Compression and decompression in the exomizer format";
      description = "This package provides a pure interface for compressing and decompressing data represented as strict @ByteStrings@.\n\nOnly the @raw@, @mem@ and @level@ compressions are supported.\n\nThis library uses the @exomizer 2.0.10@.\n\n@exomizer@ is created by Magnus Lind (magli143@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }