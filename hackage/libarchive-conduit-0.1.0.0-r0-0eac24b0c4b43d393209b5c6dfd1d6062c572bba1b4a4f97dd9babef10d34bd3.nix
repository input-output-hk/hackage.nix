{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libarchive-conduit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Thomas Tuegel";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Read many archive formats with libarchive and conduit";
      description = "@libarchive-conduit@ reads archives with @libarchive@. All of the many\nformats understood by @libarchive@ are supported. Resource use is\nmanaged in Haskell with the @conduit@ library. The interface is very\nsimple; archives are read from disk and their contents are presende as\na stream of pairs @(FilePath, ByteString)@ of the path to each file\nand its contents, respectively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          ];
        libs = [ (pkgs."archive") ];
        };
      };
    }