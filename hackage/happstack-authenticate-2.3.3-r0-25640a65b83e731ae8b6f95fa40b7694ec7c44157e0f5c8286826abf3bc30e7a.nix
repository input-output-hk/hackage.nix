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
        version = "2.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2015 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack Authentication Library";
      description = "A themeable authentication library with support for username+password and OpenId.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.authenticate)
          (hsPkgs.base64-bytestring)
          (hsPkgs.boomerang)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.email-validate)
          (hsPkgs.filepath)
          (hsPkgs.hsx2hs)
          (hsPkgs.jmacro)
          (hsPkgs.jwt)
          (hsPkgs.ixset-typed)
          (hsPkgs.happstack-jmacro)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-hsp)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.hsp)
          (hsPkgs.hsx-jmacro)
          (hsPkgs.safecopy)
          (hsPkgs.mime-mail)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.pwstore-purehaskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.userid)
          (hsPkgs.random)
          (hsPkgs.shakespeare)
          (hsPkgs.unordered-containers)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-boomerang)
          (hsPkgs.web-routes-happstack)
          (hsPkgs.web-routes-th)
          (hsPkgs.web-routes-hsp)
        ];
      };
    };
  }