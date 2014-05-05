class LauncherController < ApplicationController
  def index
    # Load featured articles
    @fReg = get_featured("regular")
    @fSci = get_featured("research")
    @fBus = get_featured("business")
  end


  private
  def get_featured(type)
    query = { query: {
          filtered: {
            filter: {
              bool: {
                must: [
                  {terms: {
                    "author_type" => [type]
                  }}
                ]
              }
            },
            query: {
              match_all: { }
            }
          }
        },
        size: 1
      }

      Article::Publication.search(query).records.first
  end
end
