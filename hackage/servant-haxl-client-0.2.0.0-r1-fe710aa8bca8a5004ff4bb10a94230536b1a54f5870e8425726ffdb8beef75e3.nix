{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-haxl-client"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 ElvishJerricco";
      maintainer = "elvishjerricco@gmail.com";
      author = "ElvishJerricco, Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://github.com/ElvishJerricco/servant-haxl-client/";
      url = "";
      synopsis = "automatical derivation of querying functions for servant webservices";
      description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://haskell-servant.github.io/tutorial/client.html the client section of the tutorial>. This library replaces the EitherT results with Haxl. runHaxl will throw ServantError in IO in the event of error.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.haxl)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.servant)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ] ++ (if !(compiler.isGhcjs && true)
          then [ (hsPkgs.http-client) (hsPkgs.http-client-tls) ]
          else [ (hsPkgs.ghcjs-base) (hsPkgs.case-insensitive) ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.haxl)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-haxl-client)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }