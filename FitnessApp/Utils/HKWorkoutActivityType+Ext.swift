//
//  HKWorkoutActivityType+Ext.swift
//  FitnessApp
//
//  Created by Saurabh Jaiswal on 08/01/25.
//

import HealthKit
import SwiftUI

extension HKWorkoutActivityType {

    /*
     Simple mapping of available workout types to a human readable name.
     */
    var name: String {
        switch self {
        case .americanFootball:             return "American Football"
        case .archery:                      return "Archery"
        case .australianFootball:           return "Australian Football"
        case .badminton:                    return "Badminton"
        case .baseball:                     return "Baseball"
        case .basketball:                   return "Basketball"
        case .bowling:                      return "Bowling"
        case .boxing:                       return "Boxing"
        case .climbing:                     return "Climbing"
        case .crossTraining:                return "Cross Training"
        case .curling:                      return "Curling"
        case .cycling:                      return "Cycling"
        case .dance:                        return "Dance"
        case .danceInspiredTraining:        return "Dance Inspired Training"
        case .elliptical:                   return "Elliptical"
        case .equestrianSports:             return "Equestrian Sports"
        case .fencing:                      return "Fencing"
        case .fishing:                      return "Fishing"
        case .functionalStrengthTraining:   return "Functional Strength Training"
        case .golf:                         return "Golf"
        case .gymnastics:                   return "Gymnastics"
        case .handball:                     return "Handball"
        case .hiking:                       return "Hiking"
        case .hockey:                       return "Hockey"
        case .hunting:                      return "Hunting"
        case .lacrosse:                     return "Lacrosse"
        case .martialArts:                  return "Martial Arts"
        case .mindAndBody:                  return "Mind and Body"
        case .mixedMetabolicCardioTraining: return "Mixed Metabolic Cardio Training"
        case .paddleSports:                 return "Paddle Sports"
        case .play:                         return "Play"
        case .preparationAndRecovery:       return "Preparation and Recovery"
        case .racquetball:                  return "Racquetball"
        case .rowing:                       return "Rowing"
        case .rugby:                        return "Rugby"
        case .running:                      return "Running"
        case .sailing:                      return "Sailing"
        case .skatingSports:                return "Skating Sports"
        case .snowSports:                   return "Snow Sports"
        case .soccer:                       return "Soccer"
        case .softball:                     return "Softball"
        case .squash:                       return "Squash"
        case .stairClimbing:                return "Stair Climbing"
        case .surfingSports:                return "Surfing Sports"
        case .swimming:                     return "Swimming"
        case .tableTennis:                  return "Table Tennis"
        case .tennis:                       return "Tennis"
        case .trackAndField:                return "Track and Field"
        case .traditionalStrengthTraining:  return "Traditional Strength Training"
        case .volleyball:                   return "Volleyball"
        case .walking:                      return "Walking"
        case .waterFitness:                 return "Water Fitness"
        case .waterPolo:                    return "Water Polo"
        case .waterSports:                  return "Water Sports"
        case .wrestling:                    return "Wrestling"
        case .yoga:                         return "Yoga"

        // iOS 10
        case .barre:                        return "Barre"
        case .coreTraining:                 return "Core Training"
        case .crossCountrySkiing:           return "Cross Country Skiing"
        case .downhillSkiing:               return "Downhill Skiing"
        case .flexibility:                  return "Flexibility"
        case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
        case .jumpRope:                     return "Jump Rope"
        case .kickboxing:                   return "Kickboxing"
        case .pilates:                      return "Pilates"
        case .snowboarding:                 return "Snowboarding"
        case .stairs:                       return "Stairs"
        case .stepTraining:                 return "Step Training"
        case .wheelchairWalkPace:           return "Wheelchair Walk Pace"
        case .wheelchairRunPace:            return "Wheelchair Run Pace"

        // iOS 11
        case .taiChi:                       return "Tai Chi"
        case .mixedCardio:                  return "Mixed Cardio"
        case .handCycling:                  return "Hand Cycling"

        // iOS 13
        case .discSports:                   return "Disc Sports"
        case .fitnessGaming:                return "Fitness Gaming"

        // Catch-all
        default:                            return "Other"
        }
    }
    
    var image: String {
        switch self {
        case .americanFootball:             return "sportscourt"
        case .archery:                      return "target"
        case .australianFootball:           return "sportscourt.fill"
        case .badminton:                    return "figure.badminton"
        case .baseball:                     return "figure.baseball"
        case .basketball:                   return "figure.basketball"
        case .bowling:                      return "bowling"
        case .boxing:                       return "boxing.glove"
        case .climbing:                     return "figure.climbing"
        case .crossTraining:                return "figure.cross.training"
        case .curling:                      return "figure.curling"
        case .cycling:                      return "bicycle"
        case .dance:                        return "figure.dance"
        case .danceInspiredTraining:        return "figure.dance"
        case .elliptical:                   return "figure.elliptical"
        case .equestrianSports:             return "figure.equestrian.sports"
        case .fencing:                      return "figure.fencing"
        case .fishing:                      return "fish"
        case .functionalStrengthTraining:   return "figure.strengthtraining.traditional"
        case .golf:                         return "figure.golf"
        case .gymnastics:                   return "figure.gymnastics"
        case .handball:                     return "figure.handball"
        case .hiking:                       return "figure.hiking"
        case .hockey:                       return "figure.hockey"
        case .hunting:                      return "figure.hunting"
        case .lacrosse:                     return "figure.lacrosse"
        case .martialArts:                  return "figure.martial.arts"
        case .mindAndBody:                  return "figure.mind.and.body"
        case .mixedMetabolicCardioTraining: return "figure.cross.training"
        case .paddleSports:                 return "figure.outdoor.rowing"
        case .play:                         return "gamecontroller"
        case .preparationAndRecovery:       return "figure.cooldown"
        case .racquetball:                  return "figure.racquetball"
        case .rowing:                       return "figure.rowing"
        case .rugby:                        return "figure.rugby"
        case .running:                      return "figure.run"
        case .sailing:                      return "sailboat"
        case .skatingSports:                return "figure.skating"
        case .snowSports:                   return "figure.skiing.downhill"
        case .soccer:                       return "figure.soccer"
        case .softball:                     return "figure.softball"
        case .squash:                       return "figure.squash"
        case .stairClimbing:                return "figure.stairs"
        case .surfingSports:                return "wave.3.forward"
        case .swimming:                     return "figure.swimming"
        case .tableTennis:                  return "figure.table.tennis"
        case .tennis:                       return "figure.tennis"
        case .trackAndField:                return "figure.track.and.field"
        case .traditionalStrengthTraining:  return "figure.strengthtraining.traditional"
        case .volleyball:                   return "figure.volleyball"
        case .walking:                      return "figure.walk"
        case .waterFitness:                 return "figure.water.fitness"
        case .waterPolo:                    return "figure.waterpolo"
        case .waterSports:                  return "wave.3.right"
        case .wrestling:                    return "figure.wrestling"
        case .yoga:                         return "figure.yoga"
            
            // iOS 10
        case .barre:                        return "figure.barre"
        case .coreTraining:                 return "figure.strengthtraining.functional"
        case .crossCountrySkiing:           return "figure.skiing.crosscountry"
        case .downhillSkiing:               return "figure.skiing.downhill"
        case .flexibility:                  return "figure.stretch"
        case .highIntensityIntervalTraining: return "figure.hiit"
        case .jumpRope:                     return "figure.jumprope"
        case .kickboxing:                   return "figure.martial.arts"
        case .pilates:                      return "figure.pilates"
        case .snowboarding:                 return "figure.snowboarding"
        case .stairs:                       return "figure.stairs"
        case .stepTraining:                 return "figure.step.training"
        case .wheelchairWalkPace:           return "figure.wheelchair"
        case .wheelchairRunPace:            return "figure.wheelchair"
            
            // iOS 11
        case .taiChi:                       return "figure.tai.chi"
        case .mixedCardio:                  return "figure.cardio"
        case .handCycling:                  return "figure.hand.cycling"
            
            // iOS 13
        case .discSports:                   return "disc"
        case .fitnessGaming:                return "gamecontroller"
            
            // Catch-all
        default:                            return "questionmark.circle"
        }
    }
    
    var color: Color {
            switch self {
            case .americanFootball, .rugby, .trackAndField, .functionalStrengthTraining, .traditionalStrengthTraining, .coreTraining, .highIntensityIntervalTraining:
                return .red
            case .archery, .cycling, .golf, .running, .soccer, .tennis, .flexibility, .play:
                return .green
            case .australianFootball, .equestrianSports, .lacrosse, .stairClimbing, .volleyball, .jumpRope:
                return .orange
            case .badminton, .racquetball, .tableTennis, .softball, .fencing, .discSports:
                return .yellow
            case .basketball, .hockey, .rowing, .swimming, .paddleSports, .waterPolo, .handCycling, .wheelchairWalkPace, .wheelchairRunPace, .crossCountrySkiing, .downhillSkiing, .skatingSports:
                return .blue
            case .dance, .barre, .pilates:
                return .pink
            case .boxing, .martialArts, .kickboxing, .wrestling:
                return .black
            case .climbing, .hiking, .walking:
                return .brown
            case .curling, .snowSports, .snowboarding:
                return .gray
            case .crossTraining, .danceInspiredTraining, .mindAndBody, .yoga, .fitnessGaming, .squash, .gymnastics:
                return .purple
            case .surfingSports, .waterSports, .waterFitness, .sailing, .preparationAndRecovery:
                return .cyan
            case .elliptical, .taiChi, .stepTraining:
                return .mint
            default:
                return .gray
            }
        }

}
