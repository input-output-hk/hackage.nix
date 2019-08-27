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
      specVersion = "1.10";
      identifier = { name = "syntax-example"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "Example application using syntax, a library for abstract syntax descriptions.\n\n/The code./\n\n> import           Control.Applicative\n> import           Control.Lens.Cons\n> import           Control.Lens.SemiIso\n> import           Control.Lens.TH\n> import qualified Data.Attoparsec.Text as AP\n> import           Data.Char\n> import           Data.Scientific (Scientific)\n> import           Data.SemiIsoFunctor\n> import           Data.Syntax (Syntax)\n> import qualified Data.Syntax as S\n> import qualified Data.Syntax.Attoparsec.Text as S\n> import           Data.Syntax.Char (SyntaxChar)\n> import qualified Data.Syntax.Char as S\n> import qualified Data.Syntax.Combinator as S\n> import qualified Data.Syntax.Pretty as S\n> import           Data.Text (Text)\n> import qualified Data.Text.IO as T\n> import qualified Text.PrettyPrint as P\n>\n> -- A simple lambda calculus.\n>\n> data Literal = LitStr Text\n>              | LitNum Scientific\n>     deriving (Show)\n>\n> \$(makePrisms ''Literal)\n>\n> data AST = Var Text\n>          | Lit Literal\n>          | App AST AST\n>          | Abs Text AST\n>          | Let Text AST AST\n>     deriving (Show)\n>\n> \$(makePrisms ''AST)\n>\n> -- | A variable name.\n> name :: Syntax syn Text => syn Text\n> name = _Cons /\$/ S.satisfy isAlpha /*/ S.takeWhile isAlphaNum\n>\n> -- | A quoted string.\n> quoted :: SyntaxChar syn seq => syn seq\n> quoted = S.char '\"' */ S.takeTill (=='\"') /* S.char '\"'\n>\n> -- | Encloses a symbol in parentheses.\n> parens :: SyntaxChar syn seq => syn a -  > syn a\n> parens m = S.char '(' */ S.spaces_ */ m /* S.spaces_ /* S.char ')'\n>\n> -- | A literal.\n> literal :: SyntaxChar syn Text => syn Literal\n> literal =  _LitNum /\$/ S.scientific\n>        /|/ _LitStr /\$/ quoted\n>\n> -- | An atom is a variable, literal or an expression in parentheses.\n> atom :: SyntaxChar syn Text => syn AST\n> atom =  _Lit /\$/ literal\n>     /|/ _Var /\$/ name\n>     /|/ parens expr\n>\n> -- | Parses a list of atoms and folds them with the _App prism.\n> apps :: SyntaxChar syn Text => syn AST\n> apps = bifoldl1 _App /\$/ S.sepBy1 atom S.spaces1\n>\n> -- | An expression of our lambda calculus.\n> --\n> -- Thanks to 'tuple-morph' we don't have to worry about /* and */ here.\n> -- Tuples are reassociated and units are removed by the 'morphed'\n> -- isomorphism (applied in /\$~ operator).\n> expr :: SyntaxChar syn Text => syn AST\n> expr =  _Abs /\$~ S.char '\\\\'    /*/ S.spaces_\n>              /*/ name           /*/ S.spaces\n>              /*/  S.string \"->\" /*/ S.spaces\n>              /*/ expr\n>\n>     /|/ _Let /\$~ S.string \"let\" /*/ S.spaces1\n>              /*/ name           /*/ S.spaces\n>              /*/ S.char '='     /*/ S.spaces\n>              /*/ expr           /*/ S.spaces1\n>              /*/ S.string \"in\"  /*/ S.spaces1\n>              /*/ expr\n>\n>     /|/ apps\n>\n> main :: IO ()\n> main = do\n>     -- Load the standard input.\n>     t <- T.getContents\n>\n>     -- Try to parse it.\n>     case AP.parseOnly (S.getParser expr <* AP.skipSpace <* AP.endOfInput) t of\n>       Left err  -> putStrLn err\n>       Right ast -> do\n>         -- If parsing succeeded print the AST.\n>         print ast\n>\n>         -- Try to pretty print it.\n>         -- (Printing cannot really fail in this example)\n>         case S.runPrinter expr ast of\n>           Left err  -> putStrLn err\n>           Right doc -> putStrLn (P.render doc)\n>\n>     return ()\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."semi-iso" or (buildDepError "semi-iso"))
            (hsPkgs."syntax" or (buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or (buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-pretty" or (buildDepError "syntax-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            ];
          };
        };
      };
    }