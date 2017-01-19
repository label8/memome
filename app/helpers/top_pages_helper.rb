module TopPagesHelper
  def show_year(updated_at)
    updated_at.strftime('%Y')
  end

  def show_month(updated_at)
    month_hash = {
      1 => "Jan.",
      2 => "Feb.",
      3 => "Mar.",
      4 => "Apr.",
      5 => "May.",
      6 => "Jun.",
      7 => "Jul.",
      8 => "Aug.",
      9 => "Sep.",
      10 => "Oct.",
      11 => "Nov.",
      12 => "Dec."
    }
    mon = updated_at.strftime('%m')
    month_hash[mon.to_i]
  end

  def show_day(updated_at)
    updated_at.strftime('%d')
  end

  def show_date(updated_at)
    updated_at.strftime('%Y/%m/%d %H:%M:%S')
  end
end
