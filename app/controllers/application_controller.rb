# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def charts
    @data_table = GoogleVisualr::DataTable.new
    # Add Column Headers
    @data_table.new_column('string', 'Year' )
    @data_table.new_column('number', 'Sales')
    @data_table.new_column('number', 'Expenses')
    @data_table.new_column('number', 'Expenses2')

    # Add Rows and Values
    @data_table.add_rows([
      ['2004', 1000, 400, 1111],
      ['2005', 1170, 460, 2111],
      ['2006', 660, 1120, 3111],
      ['2007', 1030, 540, 1112]
    ])

    option = { width: 400,
      height: 240,
      title: 'Company Performance',
      legend: { position: 'none' },
      isStacked: true
    }
    @chart1 = GoogleVisualr::Interactive::AreaChart.new(@data_table, option)
    @chart2 = GoogleVisualr::Interactive::PieChart.new(@data_table, option)
    @chart3 = GoogleVisualr::Interactive::LineChart.new(@data_table, option)
    @chart4 = GoogleVisualr::Interactive::ScatterChart.new(@data_table, option)

    @chart5 = GoogleVisualr::Interactive::BarChart.new(@data_table, option)
    @chart6 = GoogleVisualr::Interactive::BubbleChart.new(@data_table, option)
    # @chart7 = GoogleVisualr::Interactive::CalendarChart.new(@data_table, option)
    @chart8 = GoogleVisualr::Interactive::CandlestickChart.new(@data_table, option)

    @chart9 = GoogleVisualr::Interactive::ColumnChart.new(@data_table, option)
    @chart10 = GoogleVisualr::Interactive::ComboChart.new(@data_table, option)
    # @chart11 = GoogleVisualr::Interactive::DiffChart.new(@data_table, option)
    # @chart12 = GoogleVisualr::Interactive::DountChart.new(@data_table, option)
    @chart13 = GoogleVisualr::Interactive::GanttChart.new(@data_table, option)
    # @chart14 = GoogleVisualr::Interactive::GaugeChart.new(@data_table, option)
    @chart15 = GoogleVisualr::Interactive::GeoChart.new(@data_table, option)
    @chart16 = GoogleVisualr::Interactive::Histogram.new(@data_table, option)
    render "charts" , layout: "application"
  end
end
