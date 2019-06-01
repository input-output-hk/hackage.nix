{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openssl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "github"; version = "0.22"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2013 Mike Burns, Copyright 2013-2015 John Wiegley, Copyright 2016-2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Mike Burns, John Wiegley, Oleg Grenrus";
      homepage = "https://github.com/phadej/github";
      url = "";
      synopsis = "Access to the GitHub API, v3.";
      description = "The GitHub API provides programmatic access to the full\nGitHub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.\n\nFor supported endpoints see \"GitHub\" module.\n\n> import qualified GitHub as GH\n>\n> main :: IO ()\n> main = do\n>     possibleUser <- GH.executeRequest' \$ GH.userInfoForR \"phadej\"\n>     print possibleUser\n\nFor more of an overview please see the README: <https://github.com/phadej/github/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.base-compat)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary-instances)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.deepseq-generics)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-link-header)
          (hsPkgs.http-types)
          (hsPkgs.iso8601-time)
          (hsPkgs.network-uri)
          (hsPkgs.tagged)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-instances)
          ] ++ (if flags.openssl
          then [
            (hsPkgs.http-client-openssl)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.HsOpenSSL-x509-system)
            ]
          else [
            (hsPkgs.http-client-tls)
            (hsPkgs.tls)
            ])) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "github-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.github)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }