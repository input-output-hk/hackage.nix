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
      identifier = { name = "iff"; version = "0.0.6.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Michael Tolly";
      homepage = "http://code.haskell.org/~thielema/iff/";
      url = "";
      synopsis = "Constructing and dissecting IFF files";
      description = "The Interchange File Format of Electronic Arts\nis a container format used for many kinds of data.\nCommon file formats are\ne.g. IFF-8SVX for 8-bit sampled sounds and\nIFF-ILBM for images in an interleaved way\nthat is close to image representation in Amiga computers.\nCf. <http://netghost.narod.ru/gff/vendspec/iff/index.htm>\nThis library does only handle the IFF container format\nand does not handle any specific IFF data type.\nThe intention is the same as of Amiga's @iffparse.library@.\nSee <http://wiki.amigaos.net/index.php/IFFParse_Library>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }