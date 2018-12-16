{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "authenticate";
        version = "1.3.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Hiromi Ishii, Arash Rouhani";
      homepage = "http://github.com/yesodweb/authenticate";
      url = "";
      synopsis = "Authentication methods for Haskell web applications.";
      description = "API docs and the README are available at <http://www.stackage.org/package/authenticate>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-conduit)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.conduit)
          (hsPkgs.tagstream-conduit)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
        ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
      };
    };
  }