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
      identifier = { name = "rating-chgk-info"; version = "0.3.6.3"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Mansur Ziiatdinov";
      maintainer = "gltronred@gmail.com";
      author = "Mansur Ziiatdinov";
      homepage = "";
      url = "";
      synopsis = "Client for rating.chgk.info API and CSV tables (documentation in Russian)";
      description = "Клиент для REST API сайта рейтинга (rating.chgk.info) и функциональности, которой нет в REST API, но которая доступна через экспорт CSV.\nТакже содержит REST-сервер для дополнительной функциональности, доступной через CSV\n\nДокументация по типам параметров и возвращаемых значений находится в \"RatingChgkInfo.Types\"\n\nДокументация по функциям для работы с REST API находится в \"RatingChgkInfo.Api\"\n\nДокументация по функциям для работы с CSV находится в \"RatingChgkInfo.NoApi\"\n\nПримеры работы с библиотекой находятся в папке examples\n\nВ следующем большом релизе планируется заменить в части типов для REST API списки значений на множества (Set), например, для составов команд и т.п. Это должно повысить безопасность библиотеки, и не должно ухудшить возможности работы.\n\nПример использования:\n\n>\n> -- Наша библиотека\n> import RatingChgkInfo\n> -- И немного стандартных библиотек\n> import Control.Monad (forM, void)\n> import Control.Monad.IO.Class (liftIO)\n> import Data.List (nub)\n> import Data.Time (LocalTime(..),fromGregorian,midnight)\n> -- Точка входа в приложение\n> main :: IO ()\n> main = void \$ runRatingApi \$ do\n>   -- Получим список всех очных турниров\n>   --\n>   -- Функция tournaments получает одну страницу турниров, а функция getAllItems\n>   -- оборачивает подобные функции, чтобы пройтись по всем страницам.\n>   -- Далее из этого списка выбираются очные турниры 2018 года\n>   let s2018 = LocalTime (fromGregorian 2018 1 1) midnight\n>       e2018 = LocalTime (fromGregorian 2019 1 1) midnight\n>   tourns <- filter (\\t -> trs_typeName t == Casual &&\n>                           trs_dateStart t >= s2018 &&\n>                           trs_dateEnd t <= e2018) <\$>\n>             getAllItems tournaments\n>   -- Проходимся по полученному списку\n>   ts <- forM tourns \$ \\t -> do\n>     let ident = trs_idtournament t\n>     -- Получаем результаты турнира\n>     res <- tournamentResults ident\n>     -- Возвращаем названия команд-участниц\n>     pure (map tr_current_name res)\n>   -- Выводим, сколько уникальных названий было по всем турнирам\n>   liftIO (print (length (nub ts)))";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."iconv" or (buildDepError "iconv"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-js" or (buildDepError "servant-js"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."rating-chgk-info" or (buildDepError "rating-chgk-info"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."rating-chgk-info" or (buildDepError "rating-chgk-info"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "extra-rating-api" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."rating-chgk-info" or (buildDepError "rating-chgk-info"))
            (hsPkgs."relude" or (buildDepError "relude"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rating-chgk-info-test" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."rating-chgk-info" or (buildDepError "rating-chgk-info"))
            (hsPkgs."relude" or (buildDepError "relude"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "rating-chgk-info-benchmark" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."rating-chgk-info" or (buildDepError "rating-chgk-info"))
            (hsPkgs."relude" or (buildDepError "relude"))
            ];
          buildable = true;
          };
        };
      };
    }