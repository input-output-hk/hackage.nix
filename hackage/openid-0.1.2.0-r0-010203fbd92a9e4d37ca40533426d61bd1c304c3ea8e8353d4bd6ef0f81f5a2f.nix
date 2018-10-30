{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "openid";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
      maintainer = "trevor@geekgateway.com";
      author = "Trevor Elliott";
      homepage = "http://github.com/elliottt/hsopenid";
      url = "";
      synopsis = "An implementation of the OpenID-2.0 spec.";
      description = "An implementation of the OpenID-2.0 spec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HTTP)
          (hsPkgs.monadLib)
          (hsPkgs.nano-hmac)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.HsOpenSSL)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }