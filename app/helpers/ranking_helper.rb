module RankingHelper
  RANK_COLOR = %w(gold silver bronze)

  def trophy(rank)
    content_tag :i, class: "fa fa-trophy #{rank_color(rank)}-prize" do
    end
  end

  def active_tab(date=nil)
    if date == @begin_date
      "tab_area_active"
    end
  end

  private

  def rank_color(rank)
    RANK_COLOR[rank - 1] || 'other'
  end
end
