สพ#!/bin/bash

FEATURE_NAME=$1

if [ -z "$FEATURE_NAME" ]; then
  echo "❌ Please provide a feature name"
  echo "Usage: sh bin/create-feature.sh your_feature_name"
  exit 1
fi

BASE_DIR=lib/features/$FEATURE_NAME

mkdir -p $BASE_DIR/domain/entities
mkdir -p $BASE_DIR/domain/repositories
mkdir -p $BASE_DIR/application/usecases
mkdir -p $BASE_DIR/data/models
mkdir -p $BASE_DIR/data/repositories_impl
mkdir -p $BASE_DIR/data/datasources/remote
mkdir -p $BASE_DIR/data/datasources/local
mkdir -p $BASE_DIR/presentation/bloc
mkdir -p $BASE_DIR/presentation/pages
mkdir -p $BASE_DIR/presentation/widgets

touch $BASE_DIR/domain/entities/${FEATURE_NAME}_entity.dart
touch $BASE_DIR/domain/repositories/${FEATURE_NAME}_repository.dart
touch $BASE_DIR/application/usecases/${FEATURE_NAME}_usecase.dart
touch $BASE_DIR/data/models/${FEATURE_NAME}_model.dart
touch $BASE_DIR/data/repositories_impl/${FEATURE_NAME}_repository_impl.dart
touch $BASE_DIR/data/datasources/remote/${FEATURE_NAME}_remote_data_source.dart
touch $BASE_DIR/data/datasources/local/${FEATURE_NAME}_local_data_source.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_bloc.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_event.dart
touch $BASE_DIR/presentation/bloc/${FEATURE_NAME}_state.dart
touch $BASE_DIR/presentation/pages/${FEATURE_NAME}_page.dart
touch $BASE_DIR/presentation/widgets/${FEATURE_NAME}_tile.dart

echo \"✅ Feature '$FEATURE_NAME' created successfully!\"
