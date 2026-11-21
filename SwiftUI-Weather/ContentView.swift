import SwiftUI

// MARK: - 1. Data Models (Simple & Beginner Friendly)

/// Hourly weather data point
struct HourlyForecast: Identifiable {
    let id = UUID()
    let time: String
    let icon: String
    let temp: Int
}

/// Daily weather forecast
struct DailyForecast: Identifiable {
    let id = UUID()
    let day: String
    let icon: String
    let temp: Int
}

/// Complete weather profile for a city
struct CityWeather: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let currentTemp: Int
    let condition: String
    let dayIcon: String
    let nightIcon: String
    let highTemp: Int
    let lowTemp: Int
    let humidity: String
    let windSpeed: String
    let feelsLike: String
    let uvIndex: String
    let hourly: [HourlyForecast]
    let daily: [DailyForecast]
    
    static func == (lhs: CityWeather, rhs: CityWeather) -> Bool {
        lhs.id == rhs.id
    }
}

// MARK: - 2. Sample Data

struct WeatherData {
    static let cities: [CityWeather] = [
        CityWeather(
            name: "Cupertino",
            currentTemp: 76,
            condition: "Partly Cloudy",
            dayIcon: "cloud.sun.fill",
            nightIcon: "cloud.moon.fill",
            highTemp: 82,
            lowTemp: 58,
            humidity: "64%",
            windSpeed: "12 mph",
            feelsLike: "78°",
            uvIndex: "4 Moderate",
            hourly: [
                HourlyForecast(time: "Now", icon: "cloud.sun.fill", temp: 76),
                HourlyForecast(time: "12 PM", icon: "sun.max.fill", temp: 79),
                HourlyForecast(time: "1 PM", icon: "sun.max.fill", temp: 82),
                HourlyForecast(time: "2 PM", icon: "sun.max.fill", temp: 81),
                HourlyForecast(time: "3 PM", icon: "cloud.sun.fill", temp: 78),
                HourlyForecast(time: "4 PM", icon: "cloud.fill", temp: 74)
            ],
            daily: [
                DailyForecast(day: "TUE", icon: "cloud.sun.fill", temp: 74),
                DailyForecast(day: "WED", icon: "sun.max.fill", temp: 82),
                DailyForecast(day: "THU", icon: "wind", temp: 68),
                DailyForecast(day: "FRI", icon: "cloud.rain.fill", temp: 62),
                DailyForecast(day: "SAT", icon: "snowflake", temp: 32)
            ]
        ),
        CityWeather(
            name: "New York",
            currentTemp: 64,
            condition: "Rain Showers",
            dayIcon: "cloud.rain.fill",
            nightIcon: "cloud.moon.rain.fill",
            highTemp: 68,
            lowTemp: 52,
            humidity: "86%",
            windSpeed: "18 mph",
            feelsLike: "62°",
            uvIndex: "2 Low",
            hourly: [
                HourlyForecast(time: "Now", icon: "cloud.rain.fill", temp: 64),
                HourlyForecast(time: "12 PM", icon: "cloud.heavyrain.fill", temp: 63),
                HourlyForecast(time: "1 PM", icon: "cloud.rain.fill", temp: 65),
                HourlyForecast(time: "2 PM", icon: "cloud.fill", temp: 66),
                HourlyForecast(time: "3 PM", icon: "cloud.sun.fill", temp: 67),
                HourlyForecast(time: "4 PM", icon: "cloud.sun.fill", temp: 65)
            ],
            daily: [
                DailyForecast(day: "TUE", icon: "cloud.rain.fill", temp: 64),
                DailyForecast(day: "WED", icon: "cloud.fill", temp: 66),
                DailyForecast(day: "THU", icon: "sun.max.fill", temp: 70),
                DailyForecast(day: "FRI", icon: "cloud.sun.fill", temp: 68),
                DailyForecast(day: "SAT", icon: "cloud.drizzle.fill", temp: 60)
            ]
        ),
        CityWeather(
            name: "Tokyo",
            currentTemp: 72,
            condition: "Clear Sky",
            dayIcon: "sun.max.fill",
            nightIcon: "moon.stars.fill",
            highTemp: 75,
            lowTemp: 59,
            humidity: "52%",
            windSpeed: "8 mph",
            feelsLike: "72°",
            uvIndex: "6 High",
            hourly: [
                HourlyForecast(time: "Now", icon: "sun.max.fill", temp: 72),
                HourlyForecast(time: "12 PM", icon: "sun.max.fill", temp: 74),
                HourlyForecast(time: "1 PM", icon: "sun.max.fill", temp: 75),
                HourlyForecast(time: "2 PM", icon: "sun.max.fill", temp: 73),
                HourlyForecast(time: "3 PM", icon: "cloud.sun.fill", temp: 71),
                HourlyForecast(time: "4 PM", icon: "moon.stars.fill", temp: 68)
            ],
            daily: [
                DailyForecast(day: "TUE", icon: "sun.max.fill", temp: 72),
                DailyForecast(day: "WED", icon: "sun.max.fill", temp: 74),
                DailyForecast(day: "THU", icon: "cloud.sun.fill", temp: 70),
                DailyForecast(day: "FRI", icon: "cloud.fill", temp: 67),
                DailyForecast(day: "SAT", icon: "cloud.rain.fill", temp: 63)
            ]
        ),
        CityWeather(
            name: "London",
            currentTemp: 58,
            condition: "Breezy & Overcast",
            dayIcon: "smoke.fill",
            nightIcon: "cloud.moon.fill",
            highTemp: 62,
            lowTemp: 48,
            humidity: "78%",
            windSpeed: "15 mph",
            feelsLike: "55°",
            uvIndex: "1 Low",
            hourly: [
                HourlyForecast(time: "Now", icon: "smoke.fill", temp: 58),
                HourlyForecast(time: "12 PM", icon: "cloud.drizzle.fill", temp: 59),
                HourlyForecast(time: "1 PM", icon: "cloud.fill", temp: 61),
                HourlyForecast(time: "2 PM", icon: "cloud.fill", temp: 62),
                HourlyForecast(time: "3 PM", icon: "cloud.sun.fill", temp: 60),
                HourlyForecast(time: "4 PM", icon: "cloud.fill", temp: 57)
            ],
            daily: [
                DailyForecast(day: "TUE", icon: "smoke.fill", temp: 58),
                DailyForecast(day: "WED", icon: "cloud.rain.fill", temp: 55),
                DailyForecast(day: "THU", icon: "cloud.drizzle.fill", temp: 57),
                DailyForecast(day: "FRI", icon: "cloud.sun.fill", temp: 61),
                DailyForecast(day: "SAT", icon: "sun.max.fill", temp: 63)
            ]
        ),
        CityWeather(
            name: "Paris",
            currentTemp: 70,
            condition: "Sunny & Warm",
            dayIcon: "sun.max.fill",
            nightIcon: "moon.stars.fill",
            highTemp: 73,
            lowTemp: 54,
            humidity: "48%",
            windSpeed: "9 mph",
            feelsLike: "70°",
            uvIndex: "5 Moderate",
            hourly: [
                HourlyForecast(time: "Now", icon: "sun.max.fill", temp: 70),
                HourlyForecast(time: "12 PM", icon: "sun.max.fill", temp: 72),
                HourlyForecast(time: "1 PM", icon: "sun.max.fill", temp: 73),
                HourlyForecast(time: "2 PM", icon: "sun.max.fill", temp: 72),
                HourlyForecast(time: "3 PM", icon: "cloud.sun.fill", temp: 69),
                HourlyForecast(time: "4 PM", icon: "cloud.sun.fill", temp: 66)
            ],
            daily: [
                DailyForecast(day: "TUE", icon: "sun.max.fill", temp: 70),
                DailyForecast(day: "WED", icon: "sun.max.fill", temp: 73),
                DailyForecast(day: "THU", icon: "cloud.sun.fill", temp: 69),
                DailyForecast(day: "FRI", icon: "cloud.rain.fill", temp: 64),
                DailyForecast(day: "SAT", icon: "cloud.fill", temp: 62)
            ]
        )
    ]
}

// MARK: - 3. Main View

struct ContentView: View {
    // Current selected city
    @State private var selectedCity: CityWeather = WeatherData.cities[0]
    
    // Day or Night mode toggle
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            // Dynamic Adaptive Background
            BackgroundView(isNight: isNight, condition: selectedCity.condition)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // 1. City / Location Selector (Horizontal Pills + Dropdown)
                    LocationBarView(
                        selectedCity: $selectedCity,
                        cities: WeatherData.cities
                    )
                    
                    // 2. Current Weather (Icon, Temp, Condition, High/Low)
                    CurrentWeatherView(
                        city: selectedCity,
                        isNight: isNight
                    )
                    
                    // 3. Hourly Forecast Card
                    HourlyForecastCard(hourly: selectedCity.hourly)
                    
                    // 4. 5-Day Weekly Forecast Card
                    DailyForecastCard(daily: selectedCity.daily)
                    
                    // 5. Extra Weather Details Grid (Humidity, Wind, Feels Like, UV)
                    WeatherMetricsGrid(city: selectedCity)
                    
                    // 6. Day / Night Switch Button
                    Button {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isNight.toggle()
                        }
                    } label: {
                        WeatherButton(
                            title: isNight ? "Switch to Day Mode ☀️" : "Switch to Night Mode 🌙",
                            textColor: isNight ? .indigo : .blue,
                            backgroundColor: .white
                        )
                    }
                    .padding(.top, 8)
                    .padding(.bottom, 24)
                }
                .padding(.horizontal)
            }
        }
    }
}

// MARK: - 4. Modular Subviews

/// 1. Location selection bar with horizontal quick-switch pills & menu
struct LocationBarView: View {
    @Binding var selectedCity: CityWeather
    let cities: [CityWeather]
    
    var body: some View {
        VStack(spacing: 12) {
            // Dropdown menu header
            Menu {
                ForEach(cities) { city in
                    Button {
                        withAnimation(.easeInOut) {
                            selectedCity = city
                        }
                    } label: {
                        HStack {
                            Text(city.name)
                            if city.id == selectedCity.id {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } label: {
                HStack(spacing: 6) {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.title2)
                    Text(selectedCity.name)
                        .font(.system(size: 28, weight: .bold))
                    Image(systemName: "chevron.down")
                        .font(.caption.bold())
                }
                .foregroundColor(.white)
                .padding(.top, 8)
            }
            
            // Quick-select city pills
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(cities) { city in
                        let isSelected = (city.id == selectedCity.id)
                        Button {
                            withAnimation(.easeInOut) {
                                selectedCity = city
                            }
                        } label: {
                            Text(city.name)
                                .font(.system(size: 14, weight: .semibold))
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(
                                    isSelected
                                        ? Color.white
                                        : Color.white.opacity(0.2)
                                )
                                .foregroundColor(isSelected ? .blue : .white)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal, 4)
            }
        }
    }
}

/// 2. Current Weather Header View
struct CurrentWeatherView: View {
    let city: CityWeather
    let isNight: Bool
    
    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: isNight ? city.nightIcon : city.dayIcon)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding(.bottom, 4)
            
            Text("\(city.currentTemp)°")
                .font(.system(size: 70, weight: .semibold))
                .foregroundColor(.white)
            
            Text(city.condition)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white.opacity(0.9))
            
            Text("H: \(city.highTemp)°   L: \(city.lowTemp)°")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white.opacity(0.8))
        }
    }
}

/// 3. Hourly Forecast Card
struct HourlyForecastCard: View {
    let hourly: [HourlyForecast]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label("HOURLY FORECAST", systemImage: "clock.fill")
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.white.opacity(0.8))
            
            Divider()
                .background(Color.white.opacity(0.3))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(hourly) { item in
                        VStack(spacing: 8) {
                            Text(item.time)
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: item.icon)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 26, height: 26)
                            
                            Text("\(item.temp)°")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.vertical, 4)
            }
        }
        .padding(16)
        .background(.ultraThinMaterial)
        .cornerRadius(16)
    }
}

/// 4. 5-Day Forecast Card
struct DailyForecastCard: View {
    let daily: [DailyForecast]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label("5-DAY FORECAST", systemImage: "calendar")
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.white.opacity(0.8))
            
            Divider()
                .background(Color.white.opacity(0.3))
            
            HStack(spacing: 16) {
                ForEach(daily) { item in
                    VStack(spacing: 8) {
                        Text(item.day)
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.white)
                        
                        Image(systemName: item.icon)
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                        
                        Text("\(item.temp)°")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.vertical, 4)
        }
        .padding(16)
        .background(.ultraThinMaterial)
        .cornerRadius(16)
    }
}

/// 5. Grid of detailed weather metrics
struct WeatherMetricsGrid: View {
    let city: CityWeather
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
            MetricCard(icon: "humidity.fill", title: "HUMIDITY", value: city.humidity)
            MetricCard(icon: "wind", title: "WIND SPEED", value: city.windSpeed)
            MetricCard(icon: "thermometer.medium", title: "FEELS LIKE", value: city.feelsLike)
            MetricCard(icon: "sun.max.trianglebadge.exclamationmark.fill", title: "UV INDEX", value: city.uvIndex)
        }
    }
}

/// Single card in the metrics grid
struct MetricCard: View {
    let icon: String
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Label(title, systemImage: icon)
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.white.opacity(0.7))
            
            Text(value)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(14)
        .background(.ultraThinMaterial)
        .cornerRadius(14)
    }
}

/// Background View with smooth gradient transitions
struct BackgroundView: View {
    let isNight: Bool
    let condition: String
    
    var colors: [Color] {
        if isNight {
            return [Color.black, Color.indigo]
        } else if condition.contains("Rain") || condition.contains("Drizzle") {
            return [Color.gray, Color.blue.opacity(0.8)]
        } else {
            return [Color.blue, Color.cyan]
        }
    }
    
    var body: some View {
        LinearGradient(
            colors: colors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

/// Reusable styled button
struct WeatherButton: View {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(textColor)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(backgroundColor)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.12), radius: 5, x: 0, y: 3)
            .padding(.horizontal, 16)
    }
}

// MARK: - 5. Canvas Preview
#Preview {
    ContentView()
}
