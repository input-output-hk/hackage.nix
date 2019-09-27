let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-http"; version = "0.0.0.20190324"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Symantic combinators for deriving clients or a server from an HTTP API";
      description = "An extensible, typed and embedded Domain-Specific Language (DSL)\nto build Web services using a write-an-API-then-derive-code-from-it approach\nas in <https://hackage.haskell.org/package/servant servant>'s,\nbut with term-level combinators instead of type-level combinators.\n\nIn this approach, writting an API can be understood\nlike the writing of a printf's or scanf's format:\nsuch that deriving a client is like calling printf on both this format\nand arguments type-checking against the given format,\nand deriving a server is like calling scanf on both this format\nand handlers type-checking against the given format.\n\n* For building an HTTP client (request building and response decoding)\nbased upon <https://hackage.haskell.org/package/http-client http-client>,\nsee <https://hackage.haskell.org/package/symantic-http-client symantic-http-client>.\n* For building an HTTP server (request routing and response building)\nbased upon <https://hackage.haskell.org/package/warp warp>,\nsee <https://hackage.haskell.org/package/symantic-http-server symantic-http-server>.\n* For streaming data (running effects (eg. in IO) during the transfer)\nusing <https://hackage.haskell.org/package/pipes pipes>,\nsee <https://hackage.haskell.org/package/symantic-http-pipes symantic-http-pipes>.\n\nFor learning how to use this library, you can read the demo example\nin <https://hackage.haskell.org/package/symantic-http-demo symantic-http-demo>.\n\nWARNING: Be aware that this library is young\n(thus its interface can change without warnings and delays),\nhas no community explicitely committed to support it (thus can die without warning),\nis poorly tested (thus even less ready for serious work),\nand — last but not least — is yours as a common for the commons\n(with the help of its <http://www.gnu.org/licenses GNU GPLv3> license).\n\nUsers of this library can be grateful to the <https://hackage.haskell.org/package/servant servant>'s contributors\nwhose work was helpful to have a concrete overview\nof the functionnalities this library could attain,\nand thank <http://okmij.org Oleg Kiselyov> whose (once again) mind-blowing (co-)work\non <http://okmij.org/ftp/typed-formatting/ typed formatting>\nwas helpful to overcome the limitation\nof <http://okmij.org/ftp/tagless-final/ one-type-parameter symantics>.\nIndeed the fundamental observation upon which this library is built\nis that <http://okmij.org/ftp/tagless-final/ one-type-parameter symantics> (repr a)\n(aka. Tagless-Final typed DSL — basically just a clever use of type classes and instances)\ncan be augmented with an extension type (repr (a -> k) k)\nextending a function to the right — while forming a category.\nWhich makes term-level combinators able to add arguments to a function\nwithin the type they will be instantiated to (repr),\nsuch that this library's combinators\n(that you can extend by just writing a new type class)\ncan be used to write an API instantiable as:\na function asking arguments to generate a client's request,\nor a function asking handlers to generate a server's response,\nor some documentation type, or any other type\nfor which you can write the type class instances\nrequired by the API combinators you use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }