class CompanyModel {
  String? symbol;
  String? assetType;
  String? name;
  String? description;
  String? cIK;
  String? exchange;
  String? currency;
  String? country;
  String? sector;
  String? industry;
  String? address;
  String? fiscalYearEnd;
  String? latestQuarter;
  double? marketCapitalization;
  String? eBITDA;
  String? pERatio;
  String? pEGRatio;
  String? bookValue;
  String? dividendPerShare;
  String? dividendYield;
  String? ePS;
  String? revenuePerShareTTM;
  String? profitMargin;
  String? operatingMarginTTM;
  String? returnOnAssetsTTM;
  String? returnOnEquityTTM;
  String? revenueTTM;
  String? grossProfitTTM;
  String? dilutedEPSTTM;
  String? quarterlyEarningsGrowthYOY;
  String? quarterlyRevenueGrowthYOY;
  String? analystTargetPrice;
  String? trailingPE;
  String? forwardPE;
  String? priceToSalesRatioTTM;
  String? priceToBookRatio;
  String? eVToRevenue;
  String? eVToEBITDA;
  String? beta;
  String? s52WeekHigh;
  String? s52WeekLow;
  String? s50DayMovingAverage;
  String? s200DayMovingAverage;
  String? sharesOutstanding;
  String? dividendDate;
  String? exDividendDate;

  CompanyModel(
      {this.symbol,
        this.assetType,
        this.name,
        this.description,
        this.cIK,
        this.exchange,
        this.currency,
        this.country,
        this.sector,
        this.industry,
        this.address,
        this.fiscalYearEnd,
        this.latestQuarter,
        this.marketCapitalization,
        this.eBITDA,
        this.pERatio,
        this.pEGRatio,
        this.bookValue,
        this.dividendPerShare,
        this.dividendYield,
        this.ePS,
        this.revenuePerShareTTM,
        this.profitMargin,
        this.operatingMarginTTM,
        this.returnOnAssetsTTM,
        this.returnOnEquityTTM,
        this.revenueTTM,
        this.grossProfitTTM,
        this.dilutedEPSTTM,
        this.quarterlyEarningsGrowthYOY,
        this.quarterlyRevenueGrowthYOY,
        this.analystTargetPrice,
        this.trailingPE,
        this.forwardPE,
        this.priceToSalesRatioTTM,
        this.priceToBookRatio,
        this.eVToRevenue,
        this.eVToEBITDA,
        this.beta,
        this.s52WeekHigh,
        this.s52WeekLow,
        this.s50DayMovingAverage,
        this.s200DayMovingAverage,
        this.sharesOutstanding,
        this.dividendDate,
        this.exDividendDate});

  CompanyModel.fromJson(Map<String, dynamic> json) {
    symbol = json['Symbol'];
    assetType = json['AssetType'];
    name = json['Name'];
    description = json['Description'];
    cIK = json['CIK'];
    exchange = json['Exchange'];
    currency = json['Currency'];
    country = json['Country'];
    sector = json['Sector'];
    industry = json['Industry'];
    address = json['Address'];
    fiscalYearEnd = json['FiscalYearEnd'];
    latestQuarter = json['LatestQuarter'];
    marketCapitalization = json['MarketCapitalization'] != null ? double.parse(json['MarketCapitalization']) : 0.0;
    eBITDA = json['EBITDA'];
    pERatio = json['PERatio'];
    pEGRatio = json['PEGRatio'];
    bookValue = json['BookValue'];
    dividendPerShare = json['DividendPerShare'];
    dividendYield = json['DividendYield'];
    ePS = json['EPS'];
    revenuePerShareTTM = json['RevenuePerShareTTM'];
    profitMargin = json['ProfitMargin'];
    operatingMarginTTM = json['OperatingMarginTTM'];
    returnOnAssetsTTM = json['ReturnOnAssetsTTM'];
    returnOnEquityTTM = json['ReturnOnEquityTTM'];
    revenueTTM = json['RevenueTTM'];
    grossProfitTTM = json['GrossProfitTTM'];
    dilutedEPSTTM = json['DilutedEPSTTM'];
    quarterlyEarningsGrowthYOY = json['QuarterlyEarningsGrowthYOY'];
    quarterlyRevenueGrowthYOY = json['QuarterlyRevenueGrowthYOY'];
    analystTargetPrice = json['AnalystTargetPrice'];
    trailingPE = json['TrailingPE'];
    forwardPE = json['ForwardPE'];
    priceToSalesRatioTTM = json['PriceToSalesRatioTTM'];
    priceToBookRatio = json['PriceToBookRatio'];
    eVToRevenue = json['EVToRevenue'];
    eVToEBITDA = json['EVToEBITDA'];
    beta = json['Beta'];
    s52WeekHigh = json['52WeekHigh'];
    s52WeekLow = json['52WeekLow'];
    s50DayMovingAverage = json['50DayMovingAverage'];
    s200DayMovingAverage = json['200DayMovingAverage'];
    sharesOutstanding = json['SharesOutstanding'];
    dividendDate = json['DividendDate'];
    exDividendDate = json['ExDividendDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Symbol'] = symbol;
    data['AssetType'] = assetType;
    data['Name'] = name;
    data['Description'] = description;
    data['CIK'] = cIK;
    data['Exchange'] = exchange;
    data['Currency'] = currency;
    data['Country'] = country;
    data['Sector'] = sector;
    data['Industry'] = industry;
    data['Address'] = address;
    data['FiscalYearEnd'] = fiscalYearEnd;
    data['LatestQuarter'] = latestQuarter;
    data['MarketCapitalization'] = marketCapitalization;
    data['EBITDA'] = eBITDA;
    data['PERatio'] = pERatio;
    data['PEGRatio'] = pEGRatio;
    data['BookValue'] = bookValue;
    data['DividendPerShare'] = dividendPerShare;
    data['DividendYield'] = dividendYield;
    data['EPS'] = ePS;
    data['RevenuePerShareTTM'] = revenuePerShareTTM;
    data['ProfitMargin'] = profitMargin;
    data['OperatingMarginTTM'] = operatingMarginTTM;
    data['ReturnOnAssetsTTM'] = returnOnAssetsTTM;
    data['ReturnOnEquityTTM'] = returnOnEquityTTM;
    data['RevenueTTM'] = revenueTTM;
    data['GrossProfitTTM'] = grossProfitTTM;
    data['DilutedEPSTTM'] = dilutedEPSTTM;
    data['QuarterlyEarningsGrowthYOY'] = quarterlyEarningsGrowthYOY;
    data['QuarterlyRevenueGrowthYOY'] = quarterlyRevenueGrowthYOY;
    data['AnalystTargetPrice'] = analystTargetPrice;
    data['TrailingPE'] = trailingPE;
    data['ForwardPE'] = forwardPE;
    data['PriceToSalesRatioTTM'] = priceToSalesRatioTTM;
    data['PriceToBookRatio'] = priceToBookRatio;
    data['EVToRevenue'] = eVToRevenue;
    data['EVToEBITDA'] = eVToEBITDA;
    data['Beta'] = beta;
    data['52WeekHigh'] = s52WeekHigh;
    data['52WeekLow'] = s52WeekLow;
    data['50DayMovingAverage'] = s50DayMovingAverage;
    data['200DayMovingAverage'] = s200DayMovingAverage;
    data['SharesOutstanding'] = sharesOutstanding;
    data['DividendDate'] = dividendDate;
    data['ExDividendDate'] = exDividendDate;
    return data;
  }
}
