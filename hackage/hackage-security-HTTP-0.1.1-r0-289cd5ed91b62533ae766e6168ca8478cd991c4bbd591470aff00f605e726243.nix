{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use-network-uri = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hackage-security-HTTP";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "https://github.com/well-typed/hackage-security";
      url = "";
      synopsis = "Hackage security bindings against the HTTP library";
      description = "The hackage security library provides a 'HttpLib'\nabstraction to allow to bind against different HTTP\nlibraries. This library implements this abstraction using\nthe @HTTP@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.zlib)
          (hsPkgs.hackage-security)
        ] ++ (if flags.use-network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
      };
    };
  }