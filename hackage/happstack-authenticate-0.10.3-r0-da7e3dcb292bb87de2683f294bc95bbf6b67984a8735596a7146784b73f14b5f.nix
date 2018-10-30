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
      specVersion = "1.6";
      identifier = {
        name = "happstack-authenticate";
        version = "0.10.3";
      };
      license = "BSD-3-Clause";
      copyright = "2011 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://hub.darcs.net/stepcut/happstack-authentication";
      url = "";
      synopsis = "Happstack Authentication Library";
      description = "A themeable authentication library with support for username+password and OpenId.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.authenticate)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ixset)
          (hsPkgs.happstack-server)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.fb)
          (hsPkgs.safecopy)
          (hsPkgs.mtl)
          (hsPkgs.pwstore-purehaskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.reform)
          (hsPkgs.reform-blaze)
          (hsPkgs.reform-happstack)
          (hsPkgs.unordered-containers)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-happstack)
        ];
      };
    };
  }