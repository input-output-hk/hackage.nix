{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pgdl"; version = "9.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mingchuan";
      author = "mingchuan";
      homepage = "";
      url = "";
      synopsis = "browse directory listing webpages and download files from them.";
      description = "pgdl is a program for viewing and accessing directory listing webpage in terminal.\n\nBrowsing files on directory listings like this and this is often annoying and hard to find the files we want.\n\npgdl provids a simple interface for browsing and downloading the files in web-engine-generated directory listings.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tagsoup)
            (hsPkgs.directory-listing-webpage-parser)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.data-default)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }