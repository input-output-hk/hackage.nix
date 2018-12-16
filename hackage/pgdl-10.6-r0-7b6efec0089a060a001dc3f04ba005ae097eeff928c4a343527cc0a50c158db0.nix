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
        name = "pgdl";
        version = "10.6";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mingchuan";
      author = "mingchuan";
      homepage = "";
      url = "";
      synopsis = "browse directory listing webpages and download files from them.";
      description = "pgdl is a program for viewing and accessing directory listing webpage in terminal.\n\nBrowsing files on directory listings like <https://www.kernel.org/pub/> is often annoying and hard to find the sutff we want.\n\npgdl provids a simple interface for browsing and downloading the files in web-engine-generated directory listings.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.tagsoup)
            (hsPkgs.directory-listing-webpage-parser)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.microlens)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.resourcet)
            (hsPkgs.configurator)
            (hsPkgs.transformers)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }