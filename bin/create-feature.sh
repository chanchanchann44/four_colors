# Get feature name from argument
FEATURE_NAME=$1

if [ -z "$FEATURE_NAME" ]; then
  echo "❌ Please provide a feature name.Example in file create-feature.sh
  exit 1
fi

BASE_DIR="features/$FEATURE_NAME"

# Create directory structure
mkdir -p $BASE_DIR/application/usecases
mkdir -p $BASE_DIR/data/models
mkdir -p $BASE_DIR/data/repositories
mkdir -p $BASE_DIR/data/services
mkdir -p $BASE_DIR/domain/entities
mkdir -p $BASE_DIR/domain/repositories.interface
mkdir -p $BASE_DIR/presentation/bloc
mkdir -p $BASE_DIR/presentation/screens
mkdir -p $BASE_DIR/presentation/widgets

# Create empty Dart files
touch $BASE_DIR/application/usecases/${FEATURE_NAME}_usecase.dart
touch $BASE_DIR/data/models/${FEATURE_NAME}_model.dart
touch $BASE_DIR/data/repositories/${FEATURE_NAME}_repository.dart
touch $BASE_DIR/data/services/${FEATURE_NAME}_service.dart
touch $BASE_DIR/domain/entities/${FEATURE_NAME}_entity.dart
touch $BASE_DIR/domain/repositories.interface/${FEATURE_NAME}_repository_interface.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_bloc.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_event.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_state.dart
touch $BASE_DIR/presentation/screens/${FEATURE_NAME}_screen.dart

echo "✅ Successfully generated feature structure for '$FEATURE_NAME'."

# example use: sh bin/generate_feature.sh color_game 
