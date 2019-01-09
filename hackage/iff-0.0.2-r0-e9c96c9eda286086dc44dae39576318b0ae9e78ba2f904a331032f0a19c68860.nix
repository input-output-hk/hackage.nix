{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "iff"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/iff/";
      url = "";
      synopsis = "Constructing and dissecting IFF files";
      description = "The Interchange File Format of Electronic Arts is a container format used for many kinds of data.\nCommon file formats are\ne.g. IFF-8SVX for 8-bit sampled sounds and\nIFF-ILBM for images in an interleaved way that is close to image representation in Amiga computers.\nCf. <http://netghost.narod.ru/gff/vendspec/iff/index.htm>\nThis library does only handle the IFF container format\nand does not handle any specific IFF data type.\nThe intention is the same as of Amiga's @iffparse.library@.\nSee <http://tbs-software.com/guide/index.php?guide=libraries.doc/lib_33.guide&node=33-11>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.bytestring) (hsPkgs.transformers) (hsPkgs.base) ];
        };
      };
    }