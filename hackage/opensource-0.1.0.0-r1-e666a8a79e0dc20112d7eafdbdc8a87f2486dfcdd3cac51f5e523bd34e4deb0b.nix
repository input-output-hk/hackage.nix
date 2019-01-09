{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { transformers_compat = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "opensource"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "https://api.opensource.org/";
      url = "";
      synopsis = "Haskell API Wrapper for the Open Source License API";
      description = "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          ] ++ (if flags.transformers_compat
          then [ (hsPkgs.transformers) (hsPkgs.transformers-compat) ]
          else [ (hsPkgs.transformers) ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.opensource)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ] ++ (if flags.transformers_compat
            then [ (hsPkgs.transformers) (hsPkgs.transformers-compat) ]
            else [ (hsPkgs.transformers) ]);
          };
        };
      };
    }