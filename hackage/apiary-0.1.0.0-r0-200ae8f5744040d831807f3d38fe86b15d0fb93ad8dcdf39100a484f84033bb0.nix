{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { monadlogger = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "philopon.dependence@gmail.com";
      author = "HirotomoMoriwaki";
      homepage = "";
      url = "";
      synopsis = "Simple web framework inspired by scotty.";
      description = "Simple web framework inspired by scotty.\n\n@\n&#123;-# LANGUAGE QuasiQuotes #-&#125;\n&#123;-# LANGUAGE OverloadedStrings #-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = run 3000 . runApiaryT def \$ do\n&#32;&#32;[capture|/:String|] \$ do\n&#32;&#32;&#32;&#32;stdMethod GET . action \$ \\\\name -> do\n&#32;&#32;&#32;&#32;&#32;&#32;contentType \"text/html\"\n&#32;&#32;&#32;&#32;&#32;&#32;lbs . L.concat \$ [\"&#60;h1&#62;Hello, \", L.pack name, \"!&#60;/h1&#62;\"]\n@\n\n* Nestable route handling(ApiaryT Monad; capture, stdMethod and more.).\n* type safe path capture.\n\nfull example & tutorial: <https://github.com/philopon/apiary/blob/master/examples/main.lhs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.monadlogger) (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"));
        buildable = true;
        };
      };
    }