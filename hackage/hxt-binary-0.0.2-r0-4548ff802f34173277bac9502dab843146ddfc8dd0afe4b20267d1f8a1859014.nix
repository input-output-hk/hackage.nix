{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hxt-binary"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Serialisation and deserialisation of HXT XmlTrees.";
      description = "Extension for storing and loading already parsed XML documents in an internal format.\nSerialisation and Deserialisation is done with the binary package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bzlib)
          (hsPkgs.deepseq)
          (hsPkgs.hxt)
          ];
        };
      };
    }